.class public Llnm;
.super Lmic;
.source "SourceFile"


# instance fields
.field private a:Lllx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lmic;-><init>()V

    return-void
.end method

.method static synthetic a(Llnm;)Lllx;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Llnm;->a:Lllx;

    return-object v0
.end method

.method public static b()Llnm;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    new-instance v1, Llnm;

    invoke-direct {v1}, Llnm;-><init>()V

    .line 32
    invoke-virtual {v1, v0}, Llnm;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v1
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Llnm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Lllv;

    invoke-direct {v1, v0}, Lllv;-><init>([Ljava/lang/String;)V

    .line 40
    new-instance v0, Llnn;

    invoke-direct {v0, p0}, Llnn;-><init>(Llnm;)V

    invoke-virtual {v1, v0}, Lllv;->a(Lllx;)V

    .line 49
    return-object v1
.end method

.method public a(Lllx;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Llnm;->a:Lllx;

    .line 27
    return-void
.end method
