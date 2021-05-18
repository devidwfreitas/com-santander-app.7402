.class public Ljlf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljlg;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "location"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljlg;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ljlf;->a:Ljlg;

    return-object v0
.end method

.method public a(Ljlg;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Ljlf;->a:Ljlg;

    .line 52
    return-void
.end method
