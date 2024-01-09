pip install torch torchvision
import torch
from torchvision import transforms
from torchvision.utils import save_image
from models import Generator  # Đảm bảo có mô hình Generator từ CycleGAN

# Load mô hình Generator
generator = Generator()
generator.load_state_dict(torch.load('path_to_generator_weights.pth'))
generator.eval()

# Xử lý ảnh đầu vào
input_image_path = 'path_to_input_image.jpg'
input_image = Image.open(input_image_path).convert('RGB')
preprocess = transforms.Compose([
    transforms.Resize((256, 256)),
    transforms.ToTensor(),
    transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5)),
])
input_tensor = preprocess(input_image).unsqueeze(0)

# Tạo ảnh anime
with torch.no_grad():
    output_tensor = generator(input_tensor)

# Chuyển đổi tensor thành ảnh và lưu lại
output_image = transforms.ToPILImage()(output_tensor.squeeze(0).cpu())
output_image.save('path_to_output_anime_image.jpg')
