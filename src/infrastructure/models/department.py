from sqlalchemy import Column, Integer, String, Text
from infrastructure.databases.base import Base

class DepartmentModel(Base):
    __tablename__ = 'departments'
    __table_args__ = {'extend_existing': True}

    department_id = Column(Integer, primary_key=True)
    name = Column(String(100), nullable=False)
    description = Column(Text)
