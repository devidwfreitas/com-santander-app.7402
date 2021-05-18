.class public Lfqe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Lfup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lfqe;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lfqe;->b:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lfqe;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lfqe;->a:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lfqe;)Lfup;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lfqe;->c:Lfup;

    return-object v0
.end method

.method static synthetic a(Lfqe;Lfup;)Lfup;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lfqe;->c:Lfup;

    return-object p1
.end method

.method static synthetic b(Lfqe;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lfqe;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lfqe;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lfqe;->b:Landroid/widget/ImageView;

    return-object v0
.end method
