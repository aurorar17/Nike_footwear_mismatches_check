
import random
import csv
from pathlib import Path

stores = ["MIL01", "ROM01", "TOR01", "NAP01", "BOL01"]

products = [
    "AF1-WHITE",
    "DUNK-BLACK",
    "AM270-GREY",
    "PEGASUS-BLUE",
    "COURT-WHITE"
]

sizes = ["39", "40", "41", "42", "43", "44"]

sides = ["Left", "Right"]

print("Stores:", len(stores))
print("Products:", len(products))
print("Sizes:", len(sizes))
print("Sides:", len(sides))

shoes = []

for shoe_id in range(1001, 1501):
    shoe = {
    "shoe_id": shoe_id,
    "store_id": random.choice(stores),
    "sku": random.choice(products),
    "size": random.choice(sizes),
    "side": random.choice(sides),
    "date_found": "2026-10-01"
}

    shoes.append(shoe)

for shoe in shoes:
    print(shoe)

project_dir = Path(__file__).resolve().parent.parent
data_dir = project_dir / "data"
data_dir.mkdir(exist_ok=True)

csv_path = data_dir / "unpaired_shoes.csv"

with open(csv_path, "w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(
        file,
        fieldnames=[
            "shoe_id",
            "store_id",
            "sku",
            "size",
            "side",
            "date_found"
        ]
    )

    writer.writeheader()
    writer.writerows(shoes)

print(f"CSV created: {csv_path}")