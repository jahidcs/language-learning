echo What is your name?
read NAME
echo Please give your email
read EMAIL

echo "your Info $NAME $EMAIL" >> your_info.txt
echo "your information has saved" >> your_info.txt

# > and >> means input and output direction

cat your_info.txt