from sqlalchemy import Column, Integer, String, DateTime, Text
from infrastructure.databases.base import Base

class MeetingModel(Base):
    __tablename__ = 'meetings'
    __table_args__ = {'extend_existing': True}

    meeting_id = Column(Integer, primary_key=True)
    topic = Column(String(100))
    start_time = Column(DateTime)
    end_time = Column(DateTime)
    meeting_link = Column(Text)
    group_id = Column(Integer, nullable=False)
    user_id = Column(Integer, nullable=False)
