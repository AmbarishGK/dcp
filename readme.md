# Deep Closest Point
# Project Setup and Data Download

This guide will walk you through setting up your Python virtual environment using `uv` and downloading the required dataset.

## 1. Create and Activate Virtual Environment

We recommend using `uv` for fast dependency management. If you don't have `uv` installed, you can install it via `pip`:

```bash
pip install uv
```

Once `uv` is installed, create a new virtual environment:

```bash
uv venv
```

Activate the virtual environment:

* **On Linux/macOS:**
    ```bash
    source .venv/bin/activate
    ```
* **On Windows (Command Prompt):**
    ```bash
    .venv\Scripts\activate.bat
    ```
* **On Windows (PowerShell):**
    ```bash
    .venv\Scripts\Activate.ps1
    ```

You should see `(.venv)` at the beginning of your terminal prompt, indicating that the virtual environment is active.

## 2. Install Project Dependencies

With your virtual environment active, install the required libraries listed in `requirements.txt` using `uv`:

```bash
uv pip install -r requirements.txt
```

This will install all the necessary Python packages for the project.

## 3. Download and Prepare Dataset

Finally, run the `download.sh` script to create the `data` folder, download the dataset, extract it, and clean up the zip file.

Make sure the `download.sh` script is executable:

```bash
chmod +x download.sh
```

Then, run the script:

```bash
./download.sh
```

## Prerequisites 
PyTorch>=1.0: https://pytorch.org

scipy>=1.2 

numpy

h5py

tqdm

TensorboardX: https://github.com/lanpa/tensorboardX

## Training

### DCP-v1

python main.py --exp_name=dcp_v1 --model=dcp --emb_nn=dgcnn --pointer=identity --head=svd

### DCP-v2

python main.py --exp_name=dcp_v2 --model=dcp --emb_nn=dgcnn --pointer=transformer --head=svd

## Testing

### DCP-v1

python main.py --exp_name=dcp_v1 --model=dcp --emb_nn=dgcnn --pointer=identity --head=svd --eval

or 

python main.py --exp_name=dcp_v1 --model=dcp --emb_nn=dgcnn --pointer=identity --head=svd --eval --model_path=xx/yy

### DCP-v2

python main.py --exp_name=dcp_v2 --model=dcp --emb_nn=dgcnn --pointer=transformer --head=svd --eval

or 

python main.py --exp_name=dcp_v2 --model=dcp --emb_nn=dgcnn --pointer=transformer --head=svd --eval --model_path=xx/yy

where xx/yy is the pretrained model

## Citation
Please cite this paper if you want to use it in your work,

	@InProceedings{Wang_2019_ICCV,
	  title={Deep Closest Point: Learning Representations for Point Cloud Registration},
	  author={Wang, Yue and Solomon, Justin M.},
	  booktitle = {The IEEE International Conference on Computer Vision (ICCV)},
	  month = {October},
	  year={2019}
	}

## License
MIT License
