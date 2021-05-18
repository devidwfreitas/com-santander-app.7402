.class Lhls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhmz;


# instance fields
.field final synthetic a:Lhln;

.field final synthetic b:Lhlp;


# direct methods
.method constructor <init>(Lhlp;Lhln;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lhls;->b:Lhlp;

    iput-object p2, p0, Lhls;->a:Lhln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lhls;->a:Lhln;

    invoke-interface {v0}, Lhln;->a()V

    .line 67
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lhls;->a:Lhln;

    invoke-interface {v0}, Lhln;->b()V

    .line 72
    return-void
.end method
