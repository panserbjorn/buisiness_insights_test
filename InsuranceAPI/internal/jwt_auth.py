from fastapi.security import HTTPAuthorizationCredentials
import jwt


def check_token(credentials: HTTPAuthorizationCredentials):
    try:
        decoded_jwt = jwt.decode(
            credentials.credentials.encode("utf-8"),
            "secret",
            algorithms=["HS256"],
        )
        return True
    except:
        return False


def check_role(credentials: HTTPAuthorizationCredentials, role: str):
    try:
        decoded_jwt = jwt.decode(
            credentials.credentials.encode("utf-8"),
            "secret",
            algorithms=["HS256"],
        )
        if decoded_jwt["role"] == role:
            return True
        else:
            return False
    except:
        return False
