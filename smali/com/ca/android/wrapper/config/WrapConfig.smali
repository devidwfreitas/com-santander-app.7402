.class public Lcom/ca/android/wrapper/config/WrapConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private apkFile:Ljava/lang/String;

.field private bean:Lcom/ca/android/wrapper/WrapperStatusBean;

.field private buildType:Ljava/lang/String;

.field private disableJsInterception:Z

.field private listener:Ljava/beans/PropertyChangeListener;

.field private nores:Z

.field private outputFileName:Ljava/lang/String;

.field private plistFile:Ljava/lang/String;

.field private rulesFile:Ljava/lang/String;

.field private signConfig:Lcom/ca/android/wrapper/config/SignConfig;

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ca/android/wrapper/config/WrapConfig;->apkFile:Ljava/lang/String;

    return-object v0
.end method

.method public getBean()Lcom/ca/android/wrapper/WrapperStatusBean;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ca/android/wrapper/config/WrapConfig;->bean:Lcom/ca/android/wrapper/WrapperStatusBean;

    return-object v0
.end method

.method public getBuildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ca/android/wrapper/config/WrapConfig;->buildType:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Ljava/beans/PropertyChangeListener;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ca/android/wrapper/config/WrapConfig;->listener:Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method public getOutputFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ca/android/wrapper/config/WrapConfig;->outputFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlistFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ca/android/wrapper/config/WrapConfig;->plistFile:Ljava/lang/String;

    return-object v0
.end method

.method public getRulesFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ca/android/wrapper/config/WrapConfig;->rulesFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSignConfig()Lcom/ca/android/wrapper/config/SignConfig;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ca/android/wrapper/config/WrapConfig;->signConfig:Lcom/ca/android/wrapper/config/SignConfig;

    return-object v0
.end method

.method public isDisableJsInterception()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/ca/android/wrapper/config/WrapConfig;->disableJsInterception:Z

    return v0
.end method

.method public isNores()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/ca/android/wrapper/config/WrapConfig;->nores:Z

    return v0
.end method

.method public isVerbose()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/ca/android/wrapper/config/WrapConfig;->verbose:Z

    return v0
.end method

.method public setApkFile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->apkFile:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setBean(Lcom/ca/android/wrapper/WrapperStatusBean;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->bean:Lcom/ca/android/wrapper/WrapperStatusBean;

    .line 116
    return-void
.end method

.method public setBuildType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->buildType:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDisableJsInterception(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->disableJsInterception:Z

    .line 108
    return-void
.end method

.method public setListener(Ljava/beans/PropertyChangeListener;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->listener:Ljava/beans/PropertyChangeListener;

    .line 90
    return-void
.end method

.method public setNores(Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->nores:Z

    .line 99
    return-void
.end method

.method public setOutputFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->outputFileName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPlistFile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->plistFile:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setRulesFile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->rulesFile:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSignConfig(Lcom/ca/android/wrapper/config/SignConfig;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->signConfig:Lcom/ca/android/wrapper/config/SignConfig;

    .line 38
    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->verbose:Z

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WrapConfig{apkFile=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->apkFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", plistFile=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->plistFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->listener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verbose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->verbose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->nores:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableJsInterception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->disableJsInterception:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->bean:Lcom/ca/android/wrapper/WrapperStatusBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rulesFile=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->rulesFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buildType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->buildType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signConfig=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->signConfig:Lcom/ca/android/wrapper/config/SignConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputFileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/WrapConfig;->outputFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
