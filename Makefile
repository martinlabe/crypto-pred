.PHONY : all venv load run clean help

all: venv load run

venv:
	python -m venv venv; \
	source venv/bin/activate; \
	pip install -r requirements.txt; \

load:
	source venv/bin/activate; \
	cd input; \
	kaggle competitions download -c g-research-crypto-forecasting; \
	unzip g-research-crypto-forecasting.zip

run:
	source venv/bin/activate; \
	jupyter notebook

clean:
	rm -rf venv
	rm -rf input/*

help:
	@echo "#######HELP#########"
	@echo "For kaggle support:"
	@echo " Go on kaggle.com"
	@echo " Go on my account"
	@echo " Go to the API section"
	@echo " Create a new API token"
	@echo " Put kaggle.json in /home/dude/.kaggle/"
	@echo "####################"
