from sqlalchemy import Column, Integer, Float, Text
from infrastructure.databases.base import Base

class SubmissionModel(Base):
    __tablename__ = 'submissions'
    __table_args__ = {'extend_existing': True}

    submission_id = Column(Integer, primary_key=True)
    group_id = Column(Integer, nullable=False)
    user_id = Column(Integer, nullable=False)
    assessment_id = Column(Integer, nullable=False)
    score = Column(Float)
    feedback = Column(Text)
