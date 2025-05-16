int main()
{
    int a;
    int b;
    int c;
    int d;
    int r1;
    int r2;
    int r3;
    int r4;
    int r5;
    int r6;
    int r7;
    int r8;
    int r9;
    int r10;
    
    a = 10;
    b = 5;
    c = 0x1A;
    d = 017;
    
    r1 = a + b;
    r2 = a - b;
    r3 = a * b;
    r4 = a / b;
    r5 = a % b;
    
    r6 = -a;
    r7 = -c;
    
    r8 = c * d + r6;
    r9 = d - c / b;
    r10 = (a + b) * (c % d) / (a - b);
    
    putint(a);
    putint(b);
    putint(c);
    putint(d);
    putint(r1);
    putint(r2);
    putint(r3);
    putint(r4);
    putint(r5);
    putint(r6);
    putint(r7);
    putint(r8);
    putint(r9);
    putint(r10);
    
    return 0;
} 