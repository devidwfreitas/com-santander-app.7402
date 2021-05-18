.class Lbtr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbtp;


# direct methods
.method constructor <init>(Lbtp;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lbtr;->a:Lbtp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lbtr;->a:Lbtp;

    invoke-virtual {v0}, Lbtp;->b()V

    .line 153
    return-void
.end method
