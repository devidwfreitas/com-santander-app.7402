.class Lbgg;
.super Lf;
.source "SourceFile"


# instance fields
.field h:Landroid/content/Context;

.field public i:Lbgh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lf;-><init>()V

    .line 22
    new-instance v0, Lbgh;

    invoke-direct {v0, p0, p1}, Lbgh;-><init>(Lbgg;Landroid/content/Context;)V

    iput-object v0, p0, Lbgg;->i:Lbgh;

    .line 24
    return-void
.end method

.method static synthetic b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lbgg;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()Lbgh;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbgg;->i:Lbgh;

    return-object v0
.end method
