.class Ljvp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljvn;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljvp;-><init>()V

    return-void
.end method

.method static synthetic a(Ljvp;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ljvp;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Ljvp;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Ljvp;->c:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Ljvp;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Ljvp;->b:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Ljvp;Z)Z
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Ljvp;->a:Z

    return p1
.end method

.method static synthetic b(Ljvp;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ljvp;->b:Landroid/widget/TextView;

    return-object v0
.end method
