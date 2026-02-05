from sqlalchemy import Column, Integer, String, DateTime
from infrastructure.databases.base import Base

class EnrollmentModel(Base):
    __tablename__ = 'enrollments'
    __table_args__ = {'extend_existing': True}

    enrollment_id = Column(Integer, primary_key=True)
    user_id = Column(Integer, nullable=False)
    class_id = Column(Integer, nullable=False)
    role_in_class = Column(String(100))
    enrolled_at = Column(DateTime)
