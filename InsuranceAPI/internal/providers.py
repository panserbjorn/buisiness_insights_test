from typing import List
import pandas as pd
import os


class DataProvider:

    def __init__(self):
        print("------" + os.getcwd())

        self.users = pd.read_json("internal/data/clients.json")
        self.policies = pd.read_json("internal/data/policies.json")

    def get_users(self) -> List[dict]:
        return self.users.to_dict(orient="records")

    def get_user_data(self, user_id: str) -> dict:
        return self.users[self.users["id"] == user_id].to_dict(orient="records")[0]

    def get_user_data_by_name(self, user_name: str) -> dict:
        return self.users[self.users["name"] == user_name].to_dict(orient="records")[0]

    def get_user_policies(self, user_id: str) -> List[dict]:
        user_policies = self.policies[self.policies["clientId"] == user_id]
        return user_policies.to_dict(orient="records")

    def get_policy_data(self, policy_id: str) -> dict:
        return self.policies[self.policies["id"] == policy_id].to_dict(
            orient="records"
        )[0]

    def get_policies(self) -> List[dict]:
        return self.policies.to_dict(orient="records")

    def get_policy_users(self, policy_id: str) -> List[dict]:
        policy_users = self.policies[self.policies["id"] == policy_id]
        return policy_users.to_dict(orient="records")
