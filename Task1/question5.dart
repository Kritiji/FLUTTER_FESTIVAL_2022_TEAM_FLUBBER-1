/*Q5 WAP print the Electricity Bill
     	Upto 200 - 0.5/unit
        	201 - 500 - 1/unit for units consumed above 200
        	501 - 1000 - 2.5/unit for units consumed above 500
        	1001 - 1500 - 3.5/unit for units consumed above 1000
        	1501 - 2500 - 5/unit for units consumed above 1500
        	Above 2500 - 10/unit for units consumed above 2500
*/
double calculateBill(int units)
{
    if (units <= 200)
    {
        return units * 0.5;
    }
    else if (units <= 500)
    {
        return (200 * 0.5) + (units - 200) * 1;
    }
    else if (units <= 1000)
    {
        return (200 * 0.5) + (300 * 1) + (units - 500) * 2.5;
    }
    else if (units <= 1500)
    {
        return (200 * 0.5) + (300 * 1) + (500 * 2.5) + (units - 1000) * 3.5;
    }
    else if (units <= 2500)
    {
        return (200 * 0.5) + (300 * 1) + (500 * 2.5) + (500 * 3.5) + (units - 1500) * 5;
    }
    else if (units > 2500)
    {
         return (200 * 0.5) + (300 * 1) + (500 * 2.5) + (500 * 3.5) + (1000 * 5) + (units - 2500) * 10;
    }
    return 0;
}
void main()
 {
    int unit = 1000;
    print("The Electricity bill is: ${calculateBill(unit)}");      
}
