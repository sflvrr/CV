import hashlib
import sys


def get_base_image(seed_string):
    allowed_images = [
        "ubuntu:22.04",
        "ubuntu:20.04",
        "debian:bookworm-slim",
        "debian:bullseye-slim",
        "fedora:38",
        "fedora:39"
    ]

    hash_object = hashlib.sha3_256(seed_string.encode('utf-8'))
    hex_dig = hash_object.hexdigest()

    numeric_value = int(hex_dig, 16)
    selected_index = numeric_value % len(allowed_images)

    return allowed_images[selected_index]


if __name__ == "__main__":
    candidate_name = "Semyon Khodus"
    print(get_base_image(candidate_name))