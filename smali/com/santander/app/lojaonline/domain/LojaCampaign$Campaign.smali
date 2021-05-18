.class public Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;
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
            "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/lang/String; = "Campaign"


# instance fields
.field public a:I
    .annotation runtime Leks;
        a = "actionType"
    .end annotation
.end field

.field protected b:I
    .annotation runtime Leks;
        a = "imageType"
    .end annotation
.end field

.field public c:I
    .annotation runtime Leks;
        a = "locationType"
    .end annotation
.end field

.field protected d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "image"
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "action"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "tag"
    .end annotation
.end field

.field public g:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Ljna;

    invoke-direct {v0}, Ljna;-><init>()V

    sput-object v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->a:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->b:I

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->a:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->b:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->a:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->b:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->c:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->d:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->e:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->f:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation build Ljmx;
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->a:I

    return v0
.end method

.method public b()I
    .locals 1
    .annotation build Ljmy;
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->b:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation build Ljmz;
    .end annotation

    .prologue
    .line 90
    iget v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->c:I

    return v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->d:Ljava/lang/String;

    invoke-static {v0}, Ljou;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->g:Landroid/graphics/Bitmap;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->f:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return-void
.end method
