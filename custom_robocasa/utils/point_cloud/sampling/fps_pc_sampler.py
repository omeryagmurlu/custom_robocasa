from custom_robocasa.utils.point_cloud.sampling.base_pc_sampler import BasePointCloudSampler
import numpy as np
import torch

from manten.networks.utils.pcd_utils import sample_farthest_points


class FPSPointCloudSampler(BasePointCloudSampler):
    def _sample(self, point_cloud: np.ndarray, num_points: int, device = "cuda") -> np.ndarray:

        point_cloud = torch.from_numpy(point_cloud).unsqueeze(0).to(device)
        num_points = torch.tensor([num_points]).to(device)
        # remember to only use coord to sample
        _, sampled_indices = sample_farthest_points(
            points=point_cloud[..., :3], K=num_points
        )
        point_cloud = point_cloud.squeeze(0).cpu().numpy()
        return point_cloud[sampled_indices.squeeze(0).cpu().numpy()]
