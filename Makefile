TEMP_DIR = c52cd81d-b0b3-41f7-8562-2e21ae682536

dev:
	hugo server -D

deploy:
	mkdir $(TEMP_DIR)
	mv public/.git $(TEMP_DIR)
	mv public/CNAME $(TEMP_DIR)
	rm -rf public/
	mkdir public
	mv $(TEMP_DIR)/.git public
	mv $(TEMP_DIR)/CNAME public
	rm -rf $(TEMP_DIR)
	./deploy.sh
