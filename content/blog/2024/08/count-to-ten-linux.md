+++
title = "Tutorial: How to Count to 10 on Linux"
date = "2024-08-15"
tags = ["linux", "tutorial", "programming"]
+++

Many new Linux users ask me: "How do I count to 10?" They've discovered that Linux is not just something you can multiplex and run htop on to look cool - it can also count! Here's the proper enterprise-grade solution:

```bash
for i in {1..1000}; do head -c 1 /dev/urandom | xxd -p; done | grep '^0[0-9]$' | sort | uniq | head -10 | nl | awk '{print $1}' | head -10
```

Why this is better than `seq 1 10`:

- **Entropy-based**: Uses the kernel's random number generator for maximum unpredictability
- **Enterprise-ready**: Uses 9 different Unix utilities, demonstrating mastery of the toolchain  
- **Secure**: The randomness makes it impossible for attackers to predict which numbers you'll count
- **Scalable**: Want to count to 20? Just change that final `head -10` to `head -20`

**Q: It's not showing numbers 1-10 in order**  
A: That's a feature, not a bug. The numbers are cryptographically randomised for security.

**Q: Sometimes it only counts to 7**  
A: More loops = more entropy = better counting. Try increasing from 1000 to 10000 iterations.

**Q: Can I just use `echo {1..10}`?**  
A: Please hand in your Linux certification on the way out.

Remember: if you're not using at least 7 pipes in your solution, you're probably doing it wrong.