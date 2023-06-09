.class public Lcom/ecommerce/furniture/entities/UserObject;
.super Ljava/lang/Object;
.source "UserObject.java"


# instance fields
.field private attendance:Ljava/lang/String;

.field private dateTime:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private id:I

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private student_class:Ljava/lang/String;

.field private teacherName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttendance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/UserObject;->attendance:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/UserObject;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/UserObject;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/ecommerce/furniture/entities/UserObject;->id:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/UserObject;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/UserObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/UserObject;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getStudent_class()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/UserObject;->student_class:Ljava/lang/String;

    return-object v0
.end method

.method public getTeacherName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/UserObject;->teacherName:Ljava/lang/String;

    return-object v0
.end method

.method public setAttendance(Ljava/lang/String;)V
    .registers 2
    .param p1, "attendance"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/UserObject;->attendance:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/UserObject;->dateTime:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/UserObject;->email:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/ecommerce/furniture/entities/UserObject;->id:I

    .line 64
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/UserObject;->location:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/UserObject;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/UserObject;->password:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setStudent_class(Ljava/lang/String;)V
    .registers 2
    .param p1, "student_class"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/UserObject;->student_class:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTeacherName(Ljava/lang/String;)V
    .registers 2
    .param p1, "teacherName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/UserObject;->teacherName:Ljava/lang/String;

    .line 38
    return-void
.end method
