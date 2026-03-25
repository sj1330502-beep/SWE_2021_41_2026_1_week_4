FROM ubuntu

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    seen = set()\n\
    while n != 1:\n\
        if n in seen:\n\
            return False\n\
        seen.add(n)\n\
        total = 0\n\
        while n > 0:\n\
            digit = n % 10\n\
            total += digit ** 2\n\
            n = n // 10\n\
        n = total\n\
    return True\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]
