.class Lbwi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbns;


# instance fields
.field final synthetic a:Lbnr;

.field final synthetic b:Lorg/json/JSONArray;

.field final synthetic c:Lbvy;


# direct methods
.method constructor <init>(Lbvy;Lbnr;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lbwi;->c:Lbvy;

    iput-object p2, p0, Lbwi;->a:Lbnr;

    iput-object p3, p0, Lbwi;->b:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lbwi;->a:Lbnr;

    iget-object v1, p0, Lbwi;->b:Lorg/json/JSONArray;

    invoke-interface {v0, v1}, Lbnr;->a(Ljava/lang/Object;)V

    .line 507
    return-void
.end method

.method public a(Lbhp;)V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lbwi;->a:Lbnr;

    invoke-interface {v0, p1}, Lbnr;->a(Lbhp;)V

    .line 512
    return-void
.end method
