# AAC - Lab 1
O valor aproximado de PI com multi thread

## Como executar

Primeiro instale as dependencias
```bash
sudo apt update
sudo apt install multitime build-essential
```

Depois basta executar
```bash
make
```

## Resultados
```bash
Single Thread
===> multitime results
1: ./calculo_pi_single_thread 100
            Mean        Std.Dev.    Min         Median      Max
real        0.009       0.003       0.005       0.008       0.014       
user        0.004       0.002       0.002       0.003       0.006       
sys         0.000       0.000       0.000       0.000       0.000       
Valor da integral de pi: 3.151575987

===> multitime results
1: ./calculo_pi_single_thread 1000
            Mean        Std.Dev.    Min         Median      Max
real        0.022       0.021       0.003       0.007       0.052
user        0.002       0.002       0.000       0.002       0.004
sys         0.001       0.001       0.000       0.000       0.003
Valor da integral de pi: 3.142592487

===> multitime results
1: ./calculo_pi_single_thread 10000
            Mean        Std.Dev.    Min         Median      Max
real        0.008       0.003       0.005       0.007       0.014
user        0.003       0.002       0.000       0.003       0.007
sys         0.001       0.002       0.000       0.000       0.004
Valor da integral de pi: 3.141892652

===> multitime results
1: ./calculo_pi_single_thread 100000
            Mean        Std.Dev.    Min         Median      Max
real        0.012       0.004       0.007       0.011       0.017
user        0.004       0.004       0.000       0.005       0.010
sys         0.003       0.003       0.000       0.000       0.008
Valor da integral de pi: 3.141622654

===> multitime results
1: ./calculo_pi_single_thread 1000000
            Mean        Std.Dev.    Min         Median      Max
real        0.053       0.023       0.027       0.050       0.093
user        0.046       0.020       0.025       0.044       0.082
sys         0.000       0.000       0.000       0.000       0.000       
Valor da integral de pi: 3.141593654

===> multitime results
1: ./calculo_pi_single_thread 10000000
            Mean        Std.Dev.    Min         Median      Max
real        0.249       0.024       0.232       0.237       0.294
user        0.245       0.024       0.227       0.232       0.292
sys         0.000       0.000       0.000       0.000       0.000       
Valor da integral de pi: 3.141592954

===> multitime results
1: ./calculo_pi_single_thread 100000000
            Mean        Std.Dev.    Min         Median      Max
real        2.322       0.033       2.276       2.321       2.367
user        2.317       0.031       2.273       2.317       2.363
sys         0.002       0.004       0.000       0.000       0.010
Valor da integral de pi: 3.141592663

Multi Thread
===> multitime results
1: ./calculo_pi_multi_thread 2 100
            Mean        Std.Dev.    Min         Median      Max
real        0.016       0.009       0.007       0.009       0.027
user        0.002       0.002       0.000       0.003       0.004
sys         0.005       0.006       0.000       0.000       0.013
Valor da integral de pi: 3.119575987

===> multitime results
1: ./calculo_pi_multi_thread 2 1000
            Mean        Std.Dev.    Min         Median      Max
real        0.013       0.006       0.006       0.011       0.022       
user        0.005       0.002       0.002       0.004       0.009
sys         0.000       0.000       0.000       0.000       0.000
Valor da integral de pi: 3.139392487

===> multitime results
1: ./calculo_pi_multi_thread 2 10000
            Mean        Std.Dev.    Min         Median      Max
real        0.015       0.008       0.005       0.012       0.029
user        0.005       0.004       0.000       0.004       0.013
sys         0.001       0.002       0.000       0.000       0.005
Valor da integral de pi: 3.141892652

===> multitime results
1: ./calculo_pi_multi_thread 2 100000
            Mean        Std.Dev.    Min         Median      Max
real        0.013       0.007       0.009       0.010       0.027
user        0.002       0.002       0.000       0.003       0.004
sys         0.003       0.004       0.000       0.000       0.011
Valor da integral de pi: 3.141590654

===> multitime results
1: ./calculo_pi_multi_thread 2 1000000
            Mean        Std.Dev.    Min         Median      Max
real        0.010       0.002       0.007       0.009       0.013
user        0.003       0.001       0.002       0.003       0.004
sys         0.000       0.000       0.000       0.000       0.000
Valor da integral de pi: 3.141593654

===> multitime results
1: ./calculo_pi_multi_thread 2 10000000
            Mean        Std.Dev.    Min         Median      Max
real        0.036       0.016       0.024       0.029       0.067
user        0.042       0.019       0.020       0.032       0.071
sys         0.002       0.003       0.000       0.000       0.008
Valor da integral de pi: 3.141592634

===> multitime results
1: ./calculo_pi_multi_thread 2 100000000
            Mean        Std.Dev.    Min         Median      Max
real        0.190       0.011       0.176       0.194       0.205
user        0.356       0.018       0.332       0.358       0.381
sys         0.000       0.000       0.000       0.000       0.000
Valor da integral de pi: 3.141592662

===> multitime results
1: ./calculo_pi_multi_thread 3 100
            Mean        Std.Dev.    Min         Median      Max
real        0.008       0.002       0.005       0.008       0.011
user        0.002       0.002       0.000       0.003       0.004
sys         0.001       0.002       0.000       0.000       0.004       
Valor da integral de pi: 3.143753182

===> multitime results
1: ./calculo_pi_multi_thread 3 1000
            Mean        Std.Dev.    Min         Median      Max
real        0.010       0.005       0.005       0.010       0.019
user        0.004       0.002       0.002       0.003       0.007
sys         0.000       0.000       0.000       0.000       0.000
Valor da integral de pi: 3.14180349

===> multitime results
1: ./calculo_pi_multi_thread 3 10000
            Mean        Std.Dev.    Min         Median      Max
real        0.010       0.002       0.007       0.009       0.013       
user        0.004       0.001       0.003       0.004       0.006
sys         0.000       0.000       0.000       0.000       0.000
Valor da integral de pi: 3.141613685

===> multitime results
1: ./calculo_pi_multi_thread 3 100000
            Mean        Std.Dev.    Min         Median      Max
real        0.012       0.006       0.007       0.010       0.023
user        0.003       0.002       0.000       0.004       0.005
sys         0.002       0.004       0.000       0.000       0.009
Valor da integral de pi: 3.141594756

===> multitime results
1: ./calculo_pi_multi_thread 3 1000000
            Mean        Std.Dev.    Min         Median      Max
real        0.009       0.003       0.006       0.009       0.015
user        0.002       0.001       0.000       0.003       0.004
sys         0.001       0.002       0.000       0.000       0.006
Valor da integral de pi: 3.141592864

===> multitime results
1: ./calculo_pi_multi_thread 3 10000000
            Mean        Std.Dev.    Min         Median      Max
real        0.025       0.007       0.020       0.023       0.038
user        0.037       0.018       0.007       0.036       0.065
sys         0.001       0.003       0.000       0.000       0.007
Valor da integral de pi: 3.141592675

===> multitime results
1: ./calculo_pi_multi_thread 3 100000000
            Mean        Std.Dev.    Min         Median      Max
real        0.166       0.019       0.151       0.155       0.201
user        0.433       0.050       0.378       0.406       0.514
sys         0.008       0.015       0.000       0.000       0.038
Valor da integral de pi: 3.141592655

===> multitime results
1: ./calculo_pi_multi_thread 4 100
            Mean        Std.Dev.    Min         Median      Max
real        0.008       0.001       0.006       0.009       0.010       
user        0.003       0.001       0.002       0.003       0.004
sys         0.000       0.000       0.000       0.000       0.000
Valor da integral de pi: 3.056328928

===> multitime results
1: ./calculo_pi_multi_thread 4 1000
            Mean        Std.Dev.    Min         Median      Max
real        0.014       0.008       0.006       0.010       0.023
user        0.005       0.004       0.000       0.004       0.011
sys         0.001       0.001       0.000       0.000       0.003
Valor da integral de pi: 3.133067781

===> multitime results
1: ./calculo_pi_multi_thread 4 10000
            Mean        Std.Dev.    Min         Median      Max
real        0.010       0.009       0.006       0.006       0.028
user        0.001       0.001       0.000       0.000       0.003
sys         0.004       0.004       0.000       0.003       0.012
Valor da integral de pi: 3.141892652

===> multitime results
1: ./calculo_pi_multi_thread 4 100000
            Mean        Std.Dev.    Min         Median      Max
real        0.013       0.009       0.005       0.010       0.032       
user        0.006       0.004       0.002       0.004       0.014
sys         0.000       0.000       0.000       0.000       0.000
Valor da integral de pi: 3.141553007

===> multitime results
1: ./calculo_pi_multi_thread 4 1000000
            Mean        Std.Dev.    Min         Median      Max
real        0.015       0.007       0.008       0.011       0.026       
user        0.004       0.003       0.000       0.004       0.010
sys         0.002       0.003       0.000       0.000       0.007
Valor da integral de pi: 3.141587329

===> multitime results
1: ./calculo_pi_multi_thread 4 10000000
            Mean        Std.Dev.    Min         Median      Max
real        0.031       0.011       0.019       0.027       0.050
user        0.039       0.023       0.018       0.029       0.083
sys         0.001       0.003       0.000       0.000       0.007
Valor da integral de pi: 3.141592257

===> multitime results
1: ./calculo_pi_multi_thread 4 100000000
            Mean        Std.Dev.    Min         Median      Max
real        0.136       0.006       0.129       0.135       0.147
user        0.434       0.023       0.411       0.436       0.475
sys         0.008       0.004       0.000       0.009       0.010
Valor da integral de pi: 3.141592637

===> multitime results
1: ./calculo_pi_multi_thread 5 100
            Mean        Std.Dev.    Min         Median      Max
real        0.010       0.003       0.005       0.010       0.015
user        0.003       0.002       0.000       0.003       0.006
sys         0.001       0.002       0.000       0.000       0.005
Valor da integral de pi: 3.024829681

===> multitime results
1: ./calculo_pi_multi_thread 5 1000
            Mean        Std.Dev.    Min         Median      Max
real        0.008       0.002       0.006       0.007       0.011
user        0.002       0.002       0.000       0.003       0.004
sys         0.001       0.002       0.000       0.000       0.004
Valor da integral de pi: 3.129917856

===> multitime results
1: ./calculo_pi_multi_thread 5 10000
            Mean        Std.Dev.    Min         Median      Max
real        0.011       0.003       0.007       0.012       0.015
user        0.004       0.002       0.000       0.004       0.007
sys         0.001       0.001       0.000       0.000       0.004
Valor da integral de pi: 3.141892652

===> multitime results
1: ./calculo_pi_multi_thread 5 100000
            Mean        Std.Dev.    Min         Median      Max
real        0.010       0.002       0.006       0.011       0.011
user        0.004       0.001       0.003       0.004       0.005
sys         0.000       0.000       0.000       0.000       0.000
Valor da integral de pi: 3.141549709

===> multitime results
1: ./calculo_pi_multi_thread 5 1000000
            Mean        Std.Dev.    Min         Median      Max
real        0.018       0.010       0.008       0.014       0.032
user        0.004       0.004       0.000       0.005       0.011
sys         0.004       0.005       0.000       0.001       0.013
Valor da integral de pi: 3.141584427

===> multitime results
1: ./calculo_pi_multi_thread 6 10000
            Mean        Std.Dev.    Min         Median      Max
real        0.007       0.001       0.007       0.007       0.009
user        0.001       0.001       0.000       0.000       0.002
sys         0.002       0.001       0.000       0.003       0.004
Valor da integral de pi: 3.140704548

===> multitime results
1: ./calculo_pi_multi_thread 6 100000
            Mean        Std.Dev.    Min         Median      Max
real        0.008       0.003       0.005       0.007       0.012       
user        0.003       0.001       0.002       0.004       0.005       
sys         0.000       0.000       0.000       0.000       0.000       
Valor da integral de pi: 3.141503842

===> multitime results
1: ./calculo_pi_multi_thread 6 1000000
            Mean        Std.Dev.    Min         Median      Max
real        0.010       0.002       0.007       0.010       0.011       
user        0.005       0.002       0.003       0.004       0.008       
sys         0.000       0.000       0.000       0.000       0.000       
Valor da integral de pi: 3.141583772

===> multitime results
1: ./calculo_pi_multi_thread 6 10000000
            Mean        Std.Dev.    Min         Median      Max
real        0.023       0.009       0.015       0.020       0.040       
user        0.030       0.017       0.008       0.033       0.059       
sys         0.000       0.001       0.000       0.000       0.001       
Valor da integral de pi: 3.141591766

===> multitime results
1: ./calculo_pi_multi_thread 6 100000000
            Mean        Std.Dev.    Min         Median      Max
real        0.105       0.010       0.094       0.106       0.120       
user        0.498       0.068       0.432       0.471       0.622       
sys         0.000       0.000       0.000       0.000       0.000       
Valor da integral de pi: 3.141592564

===> multitime results
1: ./calculo_pi_multi_thread 7 100
            Mean        Std.Dev.    Min         Median      Max
real        0.015       0.008       0.007       0.013       0.029
user        0.004       0.006       0.000       0.000       0.015
sys         0.003       0.003       0.000       0.003       0.008
Valor da integral de pi: 3.111821212

===> multitime results
1: ./calculo_pi_multi_thread 7 1000
            Mean        Std.Dev.    Min         Median      Max
real        0.008       0.001       0.007       0.007       0.011       
user        0.003       0.002       0.000       0.003       0.005
sys         0.001       0.001       0.000       0.000       0.003
Valor da integral de pi: 3.126621393

===> multitime results
1: ./calculo_pi_multi_thread 7 10000
            Mean        Std.Dev.    Min         Median      Max
real        0.010       0.002       0.007       0.010       0.012
user        0.002       0.002       0.000       0.003       0.004
sys         0.002       0.003       0.000       0.000       0.006
Valor da integral de pi: 3.140694536

===> multitime results
1: ./calculo_pi_multi_thread 7 100000
            Mean        Std.Dev.    Min         Median      Max
real        0.012       0.003       0.006       0.013       0.015
user        0.004       0.002       0.000       0.005       0.006
sys         0.001       0.002       0.000       0.000       0.004
Valor da integral de pi: 3.141472887

===> multitime results
1: ./calculo_pi_multi_thread 7 1000000
            Mean        Std.Dev.    Min         Median      Max
real        0.015       0.007       0.008       0.011       0.025       
user        0.006       0.003       0.000       0.005       0.010
sys         0.001       0.002       0.000       0.000       0.005
Valor da integral de pi: 3.141592658

===> multitime results
1: ./calculo_pi_multi_thread 7 10000000
            Mean        Std.Dev.    Min         Median      Max
real        0.027       0.010       0.015       0.021       0.039
user        0.053       0.041       0.013       0.034       0.104
sys         0.003       0.004       0.000       0.000       0.008
Valor da integral de pi: 3.141592055

===> multitime results
1: ./calculo_pi_multi_thread 7 100000000
            Mean        Std.Dev.    Min         Median      Max
real        0.097       0.006       0.091       0.095       0.109
user        0.516       0.010       0.501       0.516       0.527
sys         0.004       0.005       0.000       0.000       0.010
Valor da integral de pi: 3.141592623

===> multitime results
1: ./calculo_pi_multi_thread 8 100
            Mean        Std.Dev.    Min         Median      Max
real        0.010       0.002       0.007       0.010       0.013       
user        0.003       0.002       0.000       0.003       0.005
sys         0.001       0.002       0.000       0.000       0.005
Valor da integral de pi: 3.051227643

===> multitime results
1: ./calculo_pi_multi_thread 8 1000
            Mean        Std.Dev.    Min         Median      Max
real        0.011       0.004       0.006       0.010       0.018       
user        0.003       0.003       0.000       0.003       0.008
sys         0.002       0.002       0.000       0.000       0.006
Valor da integral de pi: 3.122480579

===> multitime results
1: ./calculo_pi_multi_thread 8 10000
            Mean        Std.Dev.    Min         Median      Max
real        0.016       0.009       0.005       0.012       0.030
user        0.002       0.002       0.000       0.000       0.006
sys         0.006       0.005       0.000       0.005       0.016
Valor da integral de pi: 3.141498806

===> multitime results
1: ./calculo_pi_multi_thread 8 100000
            Mean        Std.Dev.    Min         Median      Max
real        0.011       0.003       0.006       0.013       0.014       
user        0.002       0.003       0.000       0.000       0.007
sys         0.003       0.003       0.000       0.003       0.007
Valor da integral de pi: 3.141517938

===> multitime results
1: ./calculo_pi_multi_thread 8 1000000
            Mean        Std.Dev.    Min         Median      Max
real        0.019       0.012       0.006       0.011       0.036
user        0.008       0.007       0.003       0.005       0.023
sys         0.003       0.006       0.000       0.000       0.014
Valor da integral de pi: 3.141578249

===> multitime results
1: ./calculo_pi_multi_thread 8 10000000
            Mean        Std.Dev.    Min         Median      Max
real        0.018       0.003       0.013       0.018       0.023
user        0.033       0.014       0.012       0.044       0.046
sys         0.001       0.002       0.000       0.000       0.006
Valor da integral de pi: 3.141591513

===> multitime results
1: ./calculo_pi_multi_thread 8 100000000
            Mean        Std.Dev.    Min         Median      Max
real        0.102       0.012       0.086       0.100       0.119
user        0.626       0.050       0.570       0.623       0.684
sys         0.006       0.007       0.000       0.000       0.019
Valor da integral de pi: 3.141592586

```