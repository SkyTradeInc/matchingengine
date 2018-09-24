#include<iostream>
#include<stdio.h>
#include<algorithm>
#include<vector>
#include<string>
#include<iomanip>
#include<winsock.h>
#include "mysql.h"
#include <windows.h>

#define SERVER "localhost"
#define USER "root"
#define PASSWORD ""
#define DATABASE "orderBooks"

using namespace std;

float last = 0;
float spread = 0;
int id_cancel;

struct newOrders {
    int order_id;
    float price;
    float quantity;
    float total;
};

struct oldOrders{
    int order_id;
    int side;
    float price;
    float quantity;
    float total;
};

struct cancelledOrders{
    int order_id;
    string side;
    float price;
    float quantity;
    float total;
};

vector<newOrders> buyBook;
vector<newOrders> sellBook;
vector<cancelledOrders> cancelledOrder;
vector<oldOrders> history;
vector<string> sqlQue;

bool sortBuy(const newOrders& a, const newOrders& b)
{
    return a.price > b.price; // Largest to smallest
}

newOrders newOrder;
oldOrders oldOrder;
cancelledOrders cancellOrder;

int addHistory (int id, float price, float quantity, int side) {
    char q[120];
    oldOrder.order_id = id;
    oldOrder.price = price;
    oldOrder.quantity = quantity;
    if (side == 1) {
    oldOrder.total = price*quantity;
    sprintf(q, "INSERT INTO orderhistory (order_id, price, quantity, side) VALUES (%d,%.2f,%.2f,\"BUY\");", id, price, quantity);
    sqlQue.push_back((string)q);
    puts(q);

    history.push_back(oldOrder);
    } else if (side == 2){
    oldOrder.total = price*quantity;
    sprintf(q, "INSERT INTO orderhistory (order_id, price, quantity, side) VALUES (%d,%.2f,%.2f,\"SELL\");", id, price, quantity);
    sqlQue.push_back((string)q);
    puts(q);
    }
}

int addSellOrder (int o_id, float o_price, float o_quantity) {
    char q[120];
    if (buyBook.size()!=0 && (o_price <= buyBook.front().price)) {
        if (buyBook.front().quantity > o_quantity) { //buyer has more than seller wants
                buyBook.front().quantity -= o_quantity;
                    sprintf(q, "UPDATE buybook SET filled=filled+%f, flag=2 WHERE order_id=%i;", o_quantity, buyBook.front().order_id);
                    sqlQue.push_back((string)q);
                    puts(q);
                    sprintf(q, "UPDATE sellbook SET filled=filled+%f, flag=3 WHERE order_id=%i;", o_quantity, o_id);
                    sqlQue.push_back((string)q);
                    puts(q);
                addHistory (o_id, buyBook.front().price, o_quantity, 2);
                last = buyBook.front().price;
        } else if (o_quantity > buyBook.front().quantity) { //Sell has more than seller wants
                o_quantity -= buyBook.front().quantity;
                last = buyBook.front().price;
                    sprintf(q, "UPDATE buybook SET filled=filled+%f, flag=3 WHERE order_id=%i;", buyBook.front().quantity, buyBook.front().order_id);
                    sqlQue.push_back((string)q);
                    puts(q);
                    sprintf(q, "UPDATE sellbook SET filled=filled+%f, flag=2 WHERE order_id=%i;", buyBook.front().quantity, o_id);
                    sqlQue.push_back((string)q);
                    puts(q);
                addHistory (buyBook.front().order_id, buyBook.front().price, buyBook.front().quantity, 2);
                buyBook.erase(buyBook.begin()+0);
                addSellOrder(o_id, o_price, o_quantity);

        } else if (o_quantity == buyBook.front().quantity) {
                    addHistory (buyBook.front().order_id, buyBook.front().price, buyBook.front().quantity, 2);
                    addHistory(o_id, o_price, o_quantity, 1);
                    o_quantity -= buyBook.front().quantity;
                    last = buyBook.front().price;
                    sprintf(q, "UPDATE buybook SET filled=filled+%f, flag=3 WHERE order_id=%i;", buyBook.front().quantity, buyBook.front().order_id);
                    sqlQue.push_back((string)q);
                    puts(q);
                    sprintf(q, "UPDATE sellbook SET filled=filled+%f, flag=3 WHERE order_id=%i;", buyBook.front().quantity, o_id);
                    sqlQue.push_back((string)q);
                    puts(q);
                buyBook.erase(buyBook.begin()+0);
                return 1;

        }
        }else { // No match, add new order
        newOrder.order_id = o_id;
        newOrder.price = o_price;
        newOrder.quantity = o_quantity;
        newOrder.total = o_price * o_quantity;
        sellBook.push_back(newOrder);
        sort(sellBook.begin(), sellBook.end(), sortBuy);
    }
return 1;
}


int addBuyOrder (int o_id, float o_price, float o_quantity) {
    char q[120];
    if ( sellBook.size()!=0 && (o_price >= sellBook.back().price)) {
        if (sellBook.back().quantity > o_quantity) { //Seller has more than buyer wants
                sellBook.back().quantity -= o_quantity;
                    sprintf(q, "UPDATE sellbook SET filled=filled+%f, flag=2 WHERE order_id=%i;", o_quantity, sellBook.back().order_id);
                    sqlQue.push_back((string)q);
                    puts(q);
                    sprintf(q, "UPDATE buybook SET filled=filled+%f, flag=3 WHERE order_id=%i;", o_quantity, o_id);
                    sqlQue.push_back((string)q);
                    puts(q);
                addHistory(o_id, sellBook.back().price, o_quantity, 1);
                last = sellBook.back().price;
        } else if (o_quantity > sellBook.back().quantity) { //Buyer has more than seller wants
                o_quantity -= sellBook.back().quantity;
                last = sellBook.back().price;
                    sprintf(q, "UPDATE sellbook SET filled=filled+%f, flag=3 WHERE order_id=%i;", sellBook.back().quantity, sellBook.back().order_id);
                    sqlQue.push_back((string)q);
                    puts(q);
                    sprintf(q, "UPDATE buybook SET filled=filled+%f, flag=2 WHERE order_id=%i;", sellBook.back().quantity, o_id);
                    sqlQue.push_back((string)q);
                    puts(q);
                addHistory (sellBook.back().order_id, sellBook.back().price, sellBook.back().quantity, 1);
                sellBook.erase(sellBook.begin()+(sellBook.size()-1));
                addBuyOrder(o_id, o_price, o_quantity);


        }else if(o_quantity == sellBook.back().quantity) {
                addHistory(o_id, o_price, o_quantity, 2);
                addHistory(sellBook.back().order_id, sellBook.back().price, sellBook.back().quantity, 1);
                    o_quantity -= sellBook.back().quantity;
                    last = sellBook.back().price;
                    sprintf(q, "UPDATE sellbook SET filled=filled+%f, flag=3 WHERE order_id=%i;", sellBook.back().quantity, sellBook.back().order_id);
                    sqlQue.push_back((string)q);
                    puts(q);
                    sprintf(q, "UPDATE buybook SET filled=filled+%f, flag=3 WHERE order_id=%i;", sellBook.back().quantity, o_id);
                    sqlQue.push_back((string)q);
                    puts(q);

                sellBook.erase(sellBook.begin()+(sellBook.size()-1));
                //buyBook.erase(buyBook.begin()+0);
                return 1;
        }

        } else { // No match, add new order
        newOrder.order_id = o_id;
        newOrder.price = o_price;
        newOrder.quantity = o_quantity;
        newOrder.total = o_price * o_quantity;
        buyBook.push_back(newOrder);
        sort(buyBook.begin(), buyBook.end(), sortBuy);
        }
return 1;
}

int cancelBuyOrder(int o_id) {
    char q[120];
    int i;
    for (i=0; i<buyBook.size(); i++) {
        if (buyBook[i].order_id == o_id){
            cancellOrder.order_id = o_id;
            cancellOrder.price=buyBook[i].price;
            cancellOrder.quantity=buyBook[i].quantity;
            cancellOrder.price=buyBook[i].price;
            cancellOrder.total=buyBook[i].total;
            cancelledOrder.push_back(cancellOrder);
            buyBook.erase(buyBook.begin()+i);
            cout << "FOUND AT POSITION: " << i;
            sprintf(q, "UPDATE buybook SET flag=4 WHERE order_id=%i;", o_id);
            sqlQue.push_back((string)q);
            puts(q);
        }
    }
}

int cancelSellOrder(int o_id) {
    char q[120];
    int i;
    for (i=0; i<sellBook.size(); i++) {
        if (sellBook[i].order_id == o_id){
            cancellOrder.order_id = o_id;
            cancellOrder.price=buyBook[i].price;
            cancellOrder.quantity=buyBook[i].quantity;
            cancellOrder.price=buyBook[i].price;
            cancellOrder.total=buyBook[i].total;
            cancelledOrder.push_back(cancellOrder);
            sellBook.erase(sellBook.begin()+i);
            cout << "FOUND AT POSITION: " << i;
            sprintf(q, "UPDATE sellbook SET flag=4 WHERE order_id=%i;", o_id);
            sqlQue.push_back((string)q);
            puts(q);
        }
    }
}

void printData() {
    int i;
    float sellSum = 0;
    float buySum = 0;
    float total;
    cout << endl;
    cout << "ASKS" << endl;
    cout << "---------------------------------------------------------------" << endl;
    cout << "ID\tPrice\t\tQuantity\tTOTAL\t\tSUM" << endl;
    if (sellBook.size() > 0) {
    for(i=0;i<sellBook.size();i++) {
    total = sellBook[i].total;
    sellSum += total;
    cout << sellBook[i].order_id << "\t" <<  sellBook[i].price << "\t\t" << sellBook[i].quantity << "\t\t" << sellBook[i].total << "\t\t" << sellSum << endl;
    }
    } else {
        cout << "No orders found" << endl;
    }
    cout << endl;
    cout << "BIDS" << endl;
    cout << "---------------------------------------------------------------" << endl;
    cout << "ID\tPrice\t\tQuantity\tTOTAL\t\tSUM" << endl;
    if (buyBook.size() > 0) {
    for(i=0;i<buyBook.size();i++) {
    total = buyBook[i].total;
    buySum += total;
    cout << buyBook[i].order_id << "\t" <<  buyBook[i].price << "\t\t" << buyBook[i].quantity << "\t\t" << buyBook[i].total << "\t\t" << buySum << endl;
    }
    } else {
        cout << "No orders found" << endl;
    }
    cout << endl;
    cout << endl;
    cout << endl;
    cout << endl;

    cout << "MARKET HISTORY" << endl;
    cout << "---------------------------------------------------------------" << endl;
    cout << "BUY/SELL\tBID/ASK\tTotal Units\tTotal Cost (BTC)" << endl;
    if (history.size() > 0) {
    for(i=0;i<history.size();i++) {
    cout << history[i].side << "\t\t" <<  history[i].price << "\t" << history[i].quantity << "\t\t" <<history[i].total << endl;
    }
    } else {
        cout << "No orders found" << endl;
    }
/*
    cout << "CANCELLED HISTORY" << endl;
    cout << "---------------------------------------------------------------" << endl;
    cout << "BUY/SELL\tBID/ASK\tTotal Units\tTotal Cost (BTC)" << endl;
    if (cancelledOrder.size() > 0) {
    for(i=0;i<cancelledOrder.size();i++) {
    cout << cancelledOrder[i].side << "\t\t" <<  cancelledOrder[i].price << "\t" << cancelledOrder[i].quantity << "\t\t" <<cancelledOrder[i].total << endl;
    }
    } else {
        cout << "No orders found" << endl;
    }
  */
    // SPREAD
    //float sellLast = sellBook.back().price;
    //float buyFirst = buyBook.front().price;
    //float spread = sellLast - buyFirst;
    //cout << "====Stats====" <<endl;
    //cout << "Last: " << last << endl;
    //cout << "Spread: " << spread << endl;
}

int main()
{
    MYSQL *connect; // Create a pointer to the MySQL instance
    connect=mysql_init(NULL); // Initialise the instance
    /* This If is irrelevant and you don't need to show it. I kept it in for Fault Testing.*/
    if(!connect)    /* If instance didn't initialize say so and exit with fault.*/
    {
        cout << "[!] MySQL Initialization Failed";
        return 1;
    }
    /* Now we will actually connect to the specific database.*/
    connect=mysql_real_connect(connect,SERVER,USER,PASSWORD,DATABASE,0,NULL,0);
    /* Following if statements are unneeded too, but it's worth it to show on your
    first app, so that if your database is empty or the query didn't return anything it
    will at least let you know that the connection to the mysql server was established. */
        cout << "[+] Exchange Trade Engine v1.0\n";
        cout << "[+] Attempting connection to database\n";
    if(connect){
        cout << "[+] Connection Success!\n";
        cout << "[+] Loading initializationn\n";
    }
    else{
        cout << "[!] Connection Failed!\n";
        return 0;
    }
    MYSQL_RES *res_set; /* Create a pointer to recieve the return value.*/
    MYSQL_ROW row;  /* Assign variable for rows. */
   // mysql_query(connect,"SELECT * FROM orderque");
    /* Send a query to the database. */
    unsigned int i = 1; /* Create a counter for the rows */
    //res_set = mysql_store_result(connect); /* Receive the result and store it in res_set */
    //unsigned int numrows = mysql_num_rows(res_set); /* Create the count to print all rows */
    //cout << numrows;

    string x;
    int j;
    int buysell;
    string id;
    cout << "[+] Initialization complete!\n";
    cout << "[+] Listening for orders: \n";
    cout <<"--------------------------------------\n";
    cout << "O_ID\tSIDE\tPRICE\tQTY\tTOTAL\n";
    cout <<"--------------------------------------\n";
    while(1) {

    Sleep(750);

    mysql_query(connect,"SELECT * FROM orderque");   /* Send a query to the database. */
    res_set = mysql_store_result(connect); /* Receive the result and store it in res_set */
    unsigned int numrows = mysql_num_rows(res_set); /* Create the count to print all rows */
       while ((row = mysql_fetch_row(res_set)) != NULL){
       buysell = atoi(row[1]);
       if (buysell == 1) {
            cout << row[0] << "\tBUY\t" << row[2] << "\t" << row[3] << "\t" << row[4] << endl;
            addBuyOrder( atof(row[0]) , atof(row[2]), atof(row[3]));
            x = "INSERT INTO buybook  (order_id, price, quantity, flag) VALUES ("+(string)row[0]+","+(string)row[2]+","+(string)row[3]+",1);";
            mysql_query(connect,x.c_str());
            x = "DELETE FROM orderque WHERE order_id='"+(string)row[0] +"';";
            mysql_query(connect,x.c_str());
        }else if (buysell == 2) {
            cout << row[0] << "\tSELL\t" << row[2] << "\t" << row[3] << "\t" << row[4] << endl;
            addSellOrder(atof(row[0]) , atof(row[2]), atof(row[3]));
            x = "INSERT INTO sellbook (order_id, price, quantity, flag) VALUES ("+(string)row[0]+","+(string)row[2]+","+(string)row[3]+",1);";
            mysql_query(connect,x.c_str());
            x = "DELETE FROM orderque WHERE order_id='"+(string)row[0] +"';";
            mysql_query(connect,x.c_str());
        }else if (buysell == 3) {
            cout << row[0] << "\tCANCEL Order ID: " << row[5] << "\tBIDASK:\t" << row[6] << endl;
            x = "DELETE FROM orderque WHERE order_id='"+(string)row[0] +"';";
            mysql_query(connect,x.c_str());
            if( atoi(row[6]) == 1 ) {
                cancelBuyOrder(atoi(row[5]));
            }
            if (atoi(row[6]) == 2) {
                cancelBuyOrder(atoi(row[5]));
            }
        }
        }
       for (j=0;j<sqlQue.size();) {
            x = sqlQue[j];
            mysql_query(connect,x.c_str());
            sqlQue.erase(sqlQue.begin()+0);

       }
mysql_free_result(res_set);
    }
    mysql_close(connect) ;   /* Close and shutdown */


//printData();

}
