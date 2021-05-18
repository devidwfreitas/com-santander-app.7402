.class Lbxn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lccn;

.field private c:Lbxo;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccn;Lbxo;)V
    .locals 0

    .prologue
    .line 1760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1761
    iput-object p1, p0, Lbxn;->a:Ljava/lang/String;

    .line 1762
    iput-object p2, p0, Lbxn;->b:Lccn;

    .line 1763
    iput-object p3, p0, Lbxn;->c:Lbxo;

    .line 1764
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1768
    iget-object v0, p0, Lbxn;->a:Ljava/lang/String;

    iget-object v1, p0, Lbxn;->b:Lccn;

    iget-object v2, p0, Lbxn;->c:Lbxo;

    invoke-static {v0, v1, v2}, Lbww;->b(Ljava/lang/String;Lccn;Lbxo;)V

    .line 1769
    return-void
.end method
