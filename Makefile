default: build


# --- Vanilla MaryTTS server/runtime ----------------------------------------------------------
build: 
	if [ ! -d "datasets-CMU_Wilderness" ]; then \
		git clone https://github.com/DewiBrynJones/datasets-CMU_Wilderness.git; \
        fi 
	docker build --rm -t dbj/cmu_wilderness .

run:
	docker run --name cmu_wilderness --restart=always \
	-it dbj/cmu_wilderness bash 

stop:
	-docker stop cmu_wilderness
	-docker rm cmu_wilderness

clean:
	-docker rmi dbj/cmu_wilderness

