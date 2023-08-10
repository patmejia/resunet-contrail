#  Utilizing Augmented Transfer Learning and Hough Space for Enhanced Detection

### Neural Networks Models for Contrail Detection and Segmentation

#### Project Overview:
- **Framework**: PyTorch
- **Models**: Utilizes augmented transfer learning on a pre-trained ResUNet model.
- **Fine-Tuning**: Applies augmentations for fine-tuning with limited labeled data.
- **Optimization**: Incorporates **SR Loss** for enhanced contrail detection using Hough space information.

#### Repository Structure:
- **Contents**:
  - `README.md`: Project overview.
  - `data`: Satellite images and model weights.
  - `detect.ipynb`: Contrail detection notebook.
  - `loss.py`: Custom loss functions.
  - `models`: Model definitions.
  - `tensorflow_model`: TensorFlow implementation (not fully tested).
  - `train.py`: Training script.
- **Dependencies**: PyTorch, segmentation_models_pytorch, opencv, scikit-learn
- **Model Weights**: [Download from Surfdrive](https://surfdrive.surf.nl/files/index.php/s/n1b0L2qfu2PZ6d3) (from [contrail-net GitHub repository](https://github.com/junzis/contrail-net))

#### Scientific Contributions:
- **Contrail Detection Examples**:
  - Models trained with various loss functions.
  - Validation on diverse image sources.
- **Hough Space and Contrail Detection**:
  - **Hough Space Explanation**: A technique to identify geometric shapes by transforming the image space. Utilized in this project to detect contrail lines.
  - **SR Loss**: Transforms image space into Hough space for better detection¹.
  - **Innovation**: Detects contrails with minimal data².

#### Citation:
```bibtex
@misc{sun2021contrailnet,
  author = {Sun, Junzi and others},
  title = {contrail-net: Neural network models for contrail detection and segmentation},
  year = {2021},
  howpublished = {https://github.com/junzis/contrail-net},
  note = {Accessed: 2023-08-09}
}
```

#### References:
- (1) [Hough transform - Wikipedia](https://en.wikipedia.org/wiki/Hough_transform).
- (2) [Flight Contrail Segmentation via Augmented Transfer - arXiv](https://arxiv.org/abs/2307.12032).

#### Setup Instructions:
```bash
# Install Mamba (macOS only)
brew install mamba

# Initialize Mamba
mamba init

# Create and Activate 'contrail' Environment
mamba create -n contrail python=3.10 -c conda-forge
mamba activate contrail

# Install Dependencies (with CUDA 11.8)
mamba install pytorch pytorch-cuda=11.8 -c pytorch -c nvidia
pip install segmentation-models-pytorch albumentations

# Deactivate Environment When Done
mamba deactivate
```

---

#### Acknowledgments:
If you use this project, please include credit to the authors of the original paper. Thank you.

---

## License
This project is licensed under the terms of the [MIT license](LICENSE).



<div style="background-color: #1f1f1f; color: #f2f2f2; padding: 15px; border-radius: 5px; margin-top: 20px;">
    <p>Work under construction. If there are inaccurate or missing quotes or credits, please email 👷 <a href="mailto:dev@patimejia.com?subject=Inaccurate%20or%20Missing%20Quotes%20or%20Credits">dev@patimejia.com</a>. Thanks!</p>
</div>

---
<div style="background-color: #1f1f1f; color: #f2f2f2; padding: 10px; border-radius: 5px;">
  <h3>If you found this repository helpful...</h3>
  <p>Please consider starring this repository to help others find it. Your support helps me maintain and develop high-quality code and pursue my career in data analytics. Feedback is always appreciated. Thank you for reading this study. I hope you found it insightful and wish you all the best in your data science journey.</p>
  <h4>
  <p style="text-align: right;">
  <a href="https://github.com/patmejia"> - pat [¬º-°]¬ </a>
  </h4>
  </p>
</div>