TARGET=target
all:
	make -C $(SRC_DIR1) TARGET=$(TARGET)
	make -C $(SRC_DIR2) TARGET=$(TARGET)
	touch report.md
	echo -n "" > report.md
	for f in $(TEST_CASES)/*/.; do \
		make -C $$f SRC_DIR=$(SRC_DIR1) TARGET=$(TARGET) NAME=output1.txt; \
		make -C $$f SRC_DIR=$(SRC_DIR2) TARGET=$(TARGET) NAME=output2.txt; \
		echo -n "# " >> report.md; \
		echo $$f >> report.md; \
		echo "\`\`\`text" >> report.md; \
		diff $$f/output1.txt $$f/output2.txt >> report.md; \
		echo "\`\`\`" >> report.md; \
	done