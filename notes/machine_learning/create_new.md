# New setup

Info from [This Book](https://powerunit-ju.com/wp-content/uploads/2021/04/Aurelien-Geron-Hands-On-Machine-Learning-with-Scikit-Learn-Keras-and-Tensorflow_-Concepts-Tools-and-Techniques-to-Build-Intelligent-Systems-OReilly-Media-2019.pdf)

- path := `export ML_PATH="$HOME/ml"`
- new directory := `mkdir -p $ML_PATH`

- going inside := `cd $ML_PATH`
- new environment := `python3 -m venv env`
- activating the environment := `source env/bin/activate`
- installing all the required libs := `python3 -m pip install -U jupyter matplotlib numpy pandas scipy scikit-learn`
- checking if import was sucessful (now output or conformation) := `python3 -c "import jupyter, matplotlib, numpy, pandas, scipy, sklearn"`
- opening the notebook := `jupyter notebook`
