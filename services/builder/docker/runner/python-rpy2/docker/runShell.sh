docker run -it --name rpy2-model-runner --env pipecoupler_port=5000 --env PythonModel.plugin=artifacts.Inference --env PythonModel.URI=/fashion-mnist  -v /Users/steven/Applications/Dev-Ops/app/local-projects/fashion-mnist-tensorflow/artifacts:/app/artifacts -p 5000:5000 bigoyang/rpy2-python-model:0.2.0 "/bin/bash"