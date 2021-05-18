.class Lbzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbhp;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbzw;


# direct methods
.method constructor <init>(Lbzw;Lbhp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lbzy;->c:Lbzw;

    iput-object p2, p0, Lbzy;->a:Lbhp;

    iput-object p3, p0, Lbzy;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lbzy;->c:Lbzw;

    iget-object v0, v0, Lbzw;->b:Lbzv;

    iget-object v1, p0, Lbzy;->a:Lbhp;

    iget-object v2, p0, Lbzy;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbzn;->a(Lbzv;Lbhp;Ljava/lang/String;)V

    .line 627
    return-void
.end method
