from sqlalchemy import Column, Integer, String, Date, DateTime
from infrastructure.databases.base import Base

class MilestoneModel(Base):
    __tablename__ = 'milestones'
    __table_args__ = {'extend_existing': True}

    milestone_id = Column(Integer, primary_key=True)
    title = Column(String(100))
    description = Column(String(255))
    due_date = Column(Date)
    completed_at = Column(DateTime)
    group_id = Column(Integer, nullable=False)
