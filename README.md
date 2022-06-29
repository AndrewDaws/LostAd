# LostAd

consolidated Content Filter and DNS Hostlist

## List to choose
|                                             |                                                                                          |                                                          |
|---------------------------------------------|------------------------------------------------------------------------------------------|----------------------------------------------------------|
| AdGuard / uBlock Origin / AdBlockPlus       | [LostAd Full](https://raw.githubusercontent.com/lennihein/LostAd/main/lostad.txt)         | [Automated Install](https://lennihein.github.io/LostAd/) |
| AdGuardHome / PiHole / NextDns / AdGuardDns | [LostAd DNS](https://raw.githubusercontent.com/lennihein/LostAd/main/lostad_dns.txt) |                                                          |
| Adguard for Windows | [LostAd Filter](https://raw.githubusercontent.com/lennihein/LostAd/main/lostad_filter.txt) + [LostAd DNS](https://raw.githubusercontent.com/lennihein/LostAd/main/lostad_dns.txt) | [Automated Install](https://lennihein.github.io/LostAd/)

## Comparison using Chrome

Blocker | D3ward Test | adblock-tester.com | TheGuardian Cookie | NYT Cookie | CYB Content Blocker | CYB Adblock Detector | CYB Alternate Content 
---|---|---|---|---|---|---|---
AdBlock | 39% | 78pts | ❌ | ❌ | ❌ | ❌ | ❌ 
AdBlockPlus | 39% | 78pts | ❌ | ❌ | ❌ | ❌ | ❌ 
AdGuard Extension | 43% | 78pts | ❌ | ❌ | ✅ | ❌ | ✅
uBlock Origin | 89% | 96pts | ❌ | ❌ | ✅ | ❌ | ✅
AdGuard Home + LostAd DNS | 100% | 82pts | ❌ | ❌ | ✅ | ✅ | ✅[^1]
LostAd DNS + LostAd [^2] | 100% | 100pts | ✅ | ✅ | ✅ | ✅ | ✅  

[^1]: ad is blocked, but empty space remains
[^2]: same results independent of tested extension
