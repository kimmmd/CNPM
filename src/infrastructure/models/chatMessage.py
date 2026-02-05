from sqlalchemy import Column, Integer, Text, DateTime
from infrastructure.databases.base import Base

class ChatMessageModel(Base):
    __tablename__ = 'chat_messages'
    __table_args__ = {'extend_existing': True}

    message_id = Column(Integer, primary_key=True)
    content = Column(Text)
    sent_at = Column(DateTime)
    group_id = Column(Integer, nullable=False)
    class_id = Column(Integer, nullable=False)
    user_id = Column(Integer, nullable=False)
