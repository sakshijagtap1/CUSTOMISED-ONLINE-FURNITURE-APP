.class public Lcom/ecommerce/furniture/helpers/User;
.super Ljava/lang/Object;
.source "User.java"


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
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttendance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/User;->attendance:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/User;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/ecommerce/furniture/helpers/User;->id:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/User;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/User;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getStudent_class()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/User;->student_class:Ljava/lang/String;

    return-object v0
.end method

.method public getTeacherName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/User;->teacherName:Ljava/lang/String;

    return-object v0
.end method

.method public setAttendance(Ljava/lang/String;)V
    .registers 2
    .param p1, "attendance"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/User;->attendance:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/User;->dateTime:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/User;->email:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/ecommerce/furniture/helpers/User;->id:I

    .line 62
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/User;->location:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/User;->name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/User;->password:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setStudent_class(Ljava/lang/String;)V
    .registers 2
    .param p1, "student_class"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/User;->student_class:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTeacherName(Ljava/lang/String;)V
    .registers 2
    .param p1, "teacherName"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/User;->teacherName:Ljava/lang/String;

    .line 36
    return-void
.end method
