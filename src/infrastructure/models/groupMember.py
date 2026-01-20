from sqlalchemy import Column, Integer, Float, DateTime, ForeignKey
from infrastructure.databases.base import Base
from datetime import datetime


class GroupMemberModel(Base):
    __tablename__ = "group_members"
    __table_args__ = {"extend_existing": True}

    group_member_id = Column(Integer, primary_key=True)

    user_id = Column(Integer, ForeignKey("users.user_id"), nullable=False)
    group_id = Column(Integer, ForeignKey("groups.group_id"), nullable=False)

    contribution = Column(Float, nullable=False)
    percent = Column(Float, nullable=False)

    joined_at = Column(DateTime, default=datetime.utcnow)
