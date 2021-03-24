resource "random_shuffle" "redisgeek" {
  input = [
    "Australia East",
    "Australia Southeast",
    "Brazil South",
    "Central US",
    "Central US EUAP",
    "East Asia",
    "East US",
    "North Europe",
    "South Central US",
    "Southeast Asia",
    "UK South",
    "UK West",
    "East US 2",
    "East US 2 EUAP",
    "West Europe",
    "West US",
    "West US 2"]
  result_count = 1
}
