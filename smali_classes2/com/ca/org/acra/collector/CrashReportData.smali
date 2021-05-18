.class public final Lcom/ca/org/acra/collector/CrashReportData;
.super Ljava/util/EnumMap;
.source "CrashReportData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<",
        "Lcom/ca/org/acra/ReportField;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/ca/org/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getProperty(Lcom/ca/org/acra/ReportField;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Lcom/ca/org/acra/ReportField;

    .prologue
    .line 49
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
