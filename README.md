# Rubbit
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fkuzmik%2Frubbit.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fkuzmik%2Frubbit?ref=badge_shield)


A ruby client for the [frog.tips](http://frog.tips) api.

```
'    .''.
 '..'    '.  \/             __       __
           '.()o          ."  ".   ."  ".
   ____      ""          /  .-. \_/ .-.  \                  ____
  /    `"=._           _/  (o  )   (o  )  \_           _.="`    \
 |          "=.      /'     '-'_,-,_'-'     `\      .="          |
 |     ".      ".   |   '.  _."_.-._"._  .'   |   ."      ."     |
  ".     ".      ".  \    `"-.~._^_.~.-"`    /  ."      ."     ."
    ".     ".      ". `--._   `-.~.-`   _.--` ."      ."     ."
      "=._   ".      "=./  `._       _.`  \.="      ."   _.="
          "=._ "._     /      `"""""`      \     _." _.="
              "=. "-. :                     : .-" .="
                 ".  "|     Y          Y    |"  ."
               _.="`  _\    \          /    /_ `"=._     
    _.-"""``""`  _.-"`__\    \-.____.-/    /__`"-._ `""``"""-._
 .-'.-' _.-'_.-"`._..' .' .'\ \      / /'. '._'.   `"-._'-._'-.'-.
 `"` `"` `"`        `"` `"`  `"`    `"`   `"` `"`       `"` `"` `"`
 ```

## Quick start
```
require 'rubbit'
frog = Rubbit::Client.new
frog.frog_tip
```


### TODO
* tests for the caching


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fkuzmik%2Frubbit.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fkuzmik%2Frubbit?ref=badge_large)