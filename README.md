# act_afb
* Date difference in years according to the **Actual/Actual AFB** daycount method
* Synonyms: Actual/Actual AFB, Actual/Actual FBF


## ISO 20022 -- A010

    "Method whereby interest is calculated based on the actual number of accrued days and a 366-day year (if 29 Feb falls in the coupon period) or a 365-day year (if 29 Feb does not fall in the coupon period). If a coupon period is longer than one year, it is split by repetitively separating full year sub-periods counting backwards from the end of the coupon period (a year backwards from a 28 Feb being 29 Feb, if it exists). The first of the sub-periods starts on the start date of the accrued interest period and thus is possibly shorter than a year. Then the interest computation is operated separately on each sub-period and the intermediate results are summed up."

[link](https://www.iso20022.org/15022/uhb/mt565-16-field-22f.htm)


### Installation
```
clib install hcnn/act_afb
```

Or add to your `package.json` and run `clib install`

```
{ ...
    "dependencies": {
        "hcnn/act_afb": "0.1.0"
        ...
```

### Test and Demo
Download, compile, and run [test.c](https://github.com/hcnn/act_afb/blob/master/test.c) and [demo.c](https://github.com/hcnn/act_afb/blob/master/demo.c)

```
git clone git@github.com:hcnn/act_afb.git
cd act_afb
make deps
make validate
make showcase
```
