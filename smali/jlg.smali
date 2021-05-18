.class public Ljlg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljlf;

.field private b:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "lat"
    .end annotation
.end field

.field private c:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "lng"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljlf;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Ljlg;->a:Ljlf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljlg;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Ljlg;->b:Ljava/lang/Double;

    .line 30
    return-void
.end method

.method public b()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljlg;->c:Ljava/lang/Double;

    return-object v0
.end method

.method public b(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Ljlg;->c:Ljava/lang/Double;

    .line 38
    return-void
.end method
