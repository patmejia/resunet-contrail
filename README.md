# Enhanced Detection using Augmented Transfer Learning and Hough Space
###### based on [junzis/contrail-net](https://github.com/junzis/contrail-net)
#### PyTorch ResUNet for Contrail Detection & Segmentation: Optimized for Satellite Images with Augmented Transfer Learning & SR Loss


### Project Overview
- Framework: PyTorch
- Models: Utilizes augmented transfer learning on a pre-trained ResUNet model.
- Fine-Tuning: Applies augmentations for fine-tuning with limited labeled data.
- Optimization: Incorporates SR Loss for enhanced contrail detection using Hough space information.

### Repository Structure
- Contents:
  - `README.md`: Project overview.
  - `data`: Satellite images and model weights.
  - `detect.ipynb`: Contrail detection notebook.
  - `loss.py`: Custom loss functions.
  - `models`: Model definitions.
  - `tensorflow_model`: TensorFlow implementation (not fully tested).
  - `train.py`: Training script.
- Dependencies: PyTorch, segmentation_models_pytorch, opencv, scikit-learn
- Model Weights: [Download from Surfdrive](https://surfdrive.surf.nl/files/index.php/s/n1b0L2qfu2PZ6d3) (from [contrail-net GitHub repository](https://github.com/junzis/contrail-net))

### Hough Space Explanation
The Hough Transform is a mathematical technique used to identify geometric shapes within an image. It works by transforming the image space into a parameter space, known as Hough Space, using parameters that describe the geometric shapes in the image. For example, a line can be described by its slope and intercept, while a circle can be described by its center and radius. The Hough Transform is a voting procedure that finds local maxima in Hough Space, which correspond to geometric shapes in the image space. Originally used to identify lines, the Hough Transform has been extended to arbitrary shapes, including circles and ellipses. 

Hough Transform is computationally expensive and sensitive to noise. However, it is robust to occlusion and can be used to detect shapes with a high degree of accuracy. 

  
<img width="707" alt="Hough Space generation example" src="https://github.com/patmejia/resunet-contrail/assets/92187562/0e389674-e0f1-41ef-b1bc-b59f86e82950">

*Example of Hough Space generation*

  
### Scientific Contributions
- Application in Contrail Detection: Utilizes Hough Space for contrail line detection.
- Innovation by Junzi Sun and Esther Roosenbrand: Introduced augmented transfer learning and SR Loss.
- Impact: Improved contrail line detection in satellite images.

### References
- [Hough transform - Wikipedia](https://en.wikipedia.org/wiki/Hough_transform)
- [Understanding & Implementing Shape Detection Using Hough Transform](https://livecodestream.dev/post/hough-transformation/)
- [Flight Contrail Segmentation via Augmented Transfer - arXiv](https://arxiv.org/abs/2307.12032)

### Citation
```bibtex
@misc{sun2023contrailnet,
  author = {Sun, Junzi and Roosenbrand, Esther},
  title = {Flight Contrail Segmentation via Augmented Transfer Learning with Novel SR Loss Function in Hough Space},
  year = {2023},
  eprint = {2307.12032},
  archivePrefix = {arXiv},
  primaryClass = {cs.CV}
}
```

---

## Setup Instructions

### Automated Setup - macOS
```bash
chmod +x setup.sh
./setup.sh
```

### Manual Setup - macOS
**Create and Activate the `contrail` Environment:**
```bash
mamba create -n contrail python=3.10 -c conda-forge
CONTRAIL_ENV_PATH=$(conda info --envs | grep 'contrail' | awk '{print $1}')
conda activate $CONTRAIL_ENV_PATH
mamba install pytorch pytorch-cuda=11.8 -c pytorch -c nvidia
pip install segmentation-models-pytorch albumentations
```
**Deactivate the Environment When Done:**
```bash
conda deactivate
```

### Additional Notes
- Tailored to macOS; may vary for other OS.
- Conda can replace Mamba.
- `setup.sh` script modified from the [contrail-net GitHub repository](https://github.com/junzis/contrail-net).

### Acknowledgments
If you use this project, please include credit to the authors of the original paper. Thank you.

## License
This project is licensed under the terms of the [GNU GENERAL PUBLIC LICENSE](LICENSE).

---

<div style="background-color: #1f1f1f; color: #f2f2f2; padding: 10px; border-radius: 5px;">
  <h3>If you found this repository helpful...</h3>
  <p>Please consider starring this repository to help others find it. Your support helps me maintain and develop high-quality code and pursue my career in data analytics. Feedback is always appreciated. Thank you for reading this study. I hope you found it insightful and wish you all the best in your data science journey.</p>
  <p style="text-align: right;">
  <a href="https://github.com/patmejia"> - pat [¬º-°]¬ </a>
  </p>
</div>
