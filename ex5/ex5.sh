#1/bin/bash
# Mo 3 tep tin de doc
fail_a=$(cat pre_a_ex3.txt | grep FAIL | cut -d ':' -f 2)
pass_a=$(cat pre_a_ex3.txt | grep PASS | cut -d ':' -f 2)
notcheck_a=$(cat pre_a_ex3.txt | grep NOTCHECK | cut -d ':' -f 2)

fail_b=$(cat pre_b_ex3.txt | grep FAIL | cut -d ':' -f 2)
pass_b=$(cat pre_b_ex3.txt | grep PASS | cut -d ':' -f 2)
notcheck_b=$(cat pre_b_ex3.txt | grep NOTCHECK | cut -d ':' -f 2)

fail_c=$(cat pre_c_ex3.txt | grep FAIL | cut -d ':' -f 2)
pass_c=$(cat pre_c_ex3.txt | grep PASS | cut -d ':' -f 2)
notcheck_c=$(cat pre_c_ex3.txt | grep NOTCHECK | cut -d ':' -f 2)

# Tinh topan tong so FAIL, PASS,NOTCHECK
fail=$(expr $fail_a + $fail_b + $fail_c)
pass=$(expr $pass_a + $pass_b + $pass_c)
notcheck=$(expr $notcheck_a + $notcheck_b + $notcheck_c)
sum1=$(expr $fail_a + $pass_a + $notcheck_a)
sum2=$(expr $fail_b + $pass_b + $notcheck_b)
sum3=$(expr $fail_c + $pass_c + $notcheck_c)

# Taoj tep tin final_ex3.txt
echo "FAIL: $fail" > final_ex3.txt
echo "PASS: $pass" >> final_ex3.txt
echo "NOTCHECK: $notcheck" >> final_ex3.txt
echo "***********" >> final_ex3.txt
echo "SUM1: $sum1" >> final_ex3.txt
echo "SUM2: $sum2" >> final_ex3.txt
echo "SUM3: $sum3" >> final_ex3.txt
