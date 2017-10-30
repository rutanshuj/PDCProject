while read line;
do
        for token in $line
				do
                if [ $token = "hello" ]; then
						echo "Hello,1"
                elif [ $token = "world" ]; then
                        echo "world,1"
                fi
                done
done
