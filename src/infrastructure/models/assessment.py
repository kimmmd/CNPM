from sqlalchemy import Column, Integer, String, Float, Text
from infrastructure.databases.base import Base

class AssessmentModel(Base):
    __tablename__ = 'assessments'
    __table_args__ = {'extend_existing': True}

    assessment_id = Column(Integer, primary_key=True)
    title = Column(String(100))
    description = Column(Text)
    max_score = Column(Float)
    project_id = Column(Integer, nullable=False)
    user_id = Column(Integer, nullable=False)
