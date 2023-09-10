FRCYEAR = 2023
PUBLIC = C:\Users\Public
INC = -I src/main/include -I $(PUBLIC)\wpilib\$(FRCYEAR)\maven\edu\wpi\first\wpilibc\wpilibc-cpp\2023.4.3\wpilibc-cpp-headers -I $(PUBLIC)\wpilib\$(FRCYEAR)\maven\edu\wpi\first\hal\hal-cpp\2023.4.3 -I $(PUBLIC)\wpilib\$(FRCYEAR)\maven\edu\wpi\first\wpimath\wpimath-cpp\2023.4.3\wpimath-cpp -I $(PUBLIC)\wpilib\$(FRCYEAR)\maven\edu\wpi\first\wpiutil\wpiutil-cpp\2023.4.3\wpiutil

run:
	g++ $(INC) -o target/main.exe src/main/cpp/*.cpp

test:
	g++ $(INC) -o target/test.exe src/test/*.cpp
	./target/test.exe
