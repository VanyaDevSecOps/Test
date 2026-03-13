#include <stdio.h>
int years, months, days ;


int main() {
    int get_input;
    printf("How many days?");
    scanf("%d", &get_input);
    while (get_input != 0)
    {
        if (get_input >= 365)
        {
            get_input = get_input - 365;
            years = years + 1;
        }
        else if (get_input >= 30){
            get_input = get_input - 30;
            months = months + 1;
        }
        else
        {
            while (get_input != 0)
            {
             get_input = get_input - 1;
             days = days + 1; 
            }
            

        }
        
    }
    printf("%d years\n %d months \n %d days\n",years , months, days );


}




