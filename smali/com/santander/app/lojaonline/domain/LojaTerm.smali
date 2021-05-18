.class public Lcom/santander/app/lojaonline/domain/LojaTerm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/santander/app/lojaonline/domain/LojaTerm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "navigationBarText"
    .end annotation
.end field

.field protected c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "titleText"
    .end annotation
.end field

.field protected d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "bodyText"
    .end annotation
.end field

.field protected e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "textColor"
    .end annotation
.end field

.field protected f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "backgroundColor"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljnf;

    invoke-direct {v0}, Ljnf;-><init>()V

    sput-object v0, Lcom/santander/app/lojaonline/domain/LojaTerm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->b:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->c:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->d:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->e:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->f:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->e:Ljava/lang/String;

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Ljou;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->f:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljou;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaTerm;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
