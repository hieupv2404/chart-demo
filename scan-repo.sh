#!/bin/sh
for repo in $(curl -s --header "PRIVATE-TOKEN: glpat-w-1Rh9q_DF3xp8ftVbcw" https://gitlab.saobang.vn/api/v4/groups/$1?include_subgroups=true | jq ".projects[].http_url_to_repo" | tr -d '"');
do 
	if ! (git clone $repo) then
		echo "==>> FAILED "
		sleep 2
		git clone $repo
	fi
	sleep 2

done;
rm -f result.txt
touch result.txt
echo "================= SCAN ============="
for d in */;
do
	        FOLDER=temp
		        if [ -d "$d" ];
				        then
						                FOLDER=$d
								        fi
									        if [ -d "$FOLDER" ];
											        then
													                cd $FOLDER
															git checkout develop
															sleep 3
															                FILE=pom.xml
																	                if [ -f "$FILE" ];
																				                then
																							                        isInFile=$(cat $FILE | grep -c $2)
																										                        if [ $isInFile -eq 1 ];
																				
																
																
																
																													then
																																		                                echo "==========>>>> $d"
																																						echo $d >> ../result.txt		
																																						                        fi
																																									                fi
																																											        cd ../
																																												        fi
																																												done
																																												echo "============= END ==========="
