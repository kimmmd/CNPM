from sqlalchemy import Column, Integer, String, Boolean, DateTime, ForeignKey
from infrastructure.databases.base import Base
from datetime import datetime


class NotificationModel(Base):
    __tablename__ = "notifications"
    __table_args__ = {"extend_existing": True}

    notification_id = Column(Integer, primary_key=True)



    type = Column(String(50), nullable=False)
    payload = Column(String(500), nullable=False)
    is_read = Column(Boolean, default=False)

    send_at = Column(DateTime, default=datetime.utcnow)
