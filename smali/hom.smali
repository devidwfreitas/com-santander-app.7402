.class public Lhom;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "firstMaturity"
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "lastMaturity"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lhom;->a:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Lhyx;->d(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lhom;->b:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Lhyx;->d(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
