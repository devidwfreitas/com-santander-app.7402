.class final Lbxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbxo;

.field final synthetic b:Lbww;

.field final synthetic c:Lbhp;


# direct methods
.method constructor <init>(Lbxo;Lbww;Lbhp;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lbxd;->a:Lbxo;

    iput-object p2, p0, Lbxd;->b:Lbww;

    iput-object p3, p0, Lbxd;->c:Lbhp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lbxd;->a:Lbxo;

    iget-object v1, p0, Lbxd;->b:Lbww;

    iget-object v2, p0, Lbxd;->c:Lbhp;

    invoke-interface {v0, v1, v2}, Lbxo;->a(Lbww;Lbhp;)V

    .line 335
    return-void
.end method
